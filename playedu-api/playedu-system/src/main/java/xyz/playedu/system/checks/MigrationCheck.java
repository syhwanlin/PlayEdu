/*
 * Copyright (C) 2023 杭州白书科技有限公司
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package xyz.playedu.system.checks;

import java.util.ArrayList;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.stereotype.Component;
import xyz.playedu.system.service.MigrationService;

@Order(10)
@Component
@Slf4j
public class MigrationCheck implements CommandLineRunner {

    private record MigrationEntry(String table, String name, String resourcePath) {}

    public static final List<MigrationEntry> TABLE_SQL = List.of(
            new MigrationEntry("migrations", "20231208_14_00_00_migrations", "db/migration/20231208_14_00_00_migrations.sql"),
            new MigrationEntry("admin_permissions", "20231208_14_00_00_admin_permissions", "db/migration/20231208_14_00_00_admin_permissions.sql"),
            new MigrationEntry("admin_logs", "20231208_14_00_00_admin_logs", "db/migration/20231208_14_00_00_admin_logs.sql"),
            new MigrationEntry("admin_role_permission", "20231208_14_00_00_admin_role_permission", "db/migration/20231208_14_00_00_admin_role_permission.sql"),
            new MigrationEntry("admin_roles", "20231208_14_00_00_admin_roles", "db/migration/20231208_14_00_00_admin_roles.sql"),
            new MigrationEntry("admin_user_role", "20231208_14_00_00_admin_user_role", "db/migration/20231208_14_00_00_admin_user_role.sql"),
            new MigrationEntry("admin_users", "20231208_14_00_00_admin_users", "db/migration/20231208_14_00_00_admin_users.sql"),
            new MigrationEntry("app_config", "20231208_14_00_00_app_config", "db/migration/20231208_14_00_00_app_config.sql"),
            new MigrationEntry("course_attachment", "20231208_14_00_00_course_attachment", "db/migration/20231208_14_00_00_course_attachment.sql"),
            new MigrationEntry("course_attachment_download_log", "20231208_14_00_00_course_attachment_download_log", "db/migration/20231208_14_00_00_course_attachment_download_log.sql"),
            new MigrationEntry("course_chapters", "20231208_14_00_00_course_chapters", "db/migration/20231208_14_00_00_course_chapters.sql"),
            new MigrationEntry("course_department_user", "20231208_14_00_00_course_department_user", "db/migration/20231208_14_00_00_course_department_user.sql"),
            new MigrationEntry("course_hour", "20231208_14_00_00_course_hour", "db/migration/20231208_14_00_00_course_hour.sql"),
            new MigrationEntry("courses", "20230406_16_51_17_1111_courses", "db/migration/20230406_16_51_17_1111_courses.sql"),
            new MigrationEntry("departments", "20230406_16_51_17_1111_departments", "db/migration/20230406_16_51_17_1111_departments.sql"),
            new MigrationEntry("resource_categories", "20231208_14_00_00_resource_categories", "db/migration/20231208_14_00_00_resource_categories.sql"),
            new MigrationEntry("resource", "20231208_14_00_00_resource", "db/migration/20231208_14_00_00_resource.sql"),
            new MigrationEntry("resource_category", "20231208_14_00_00_resource_category", "db/migration/20231208_14_00_00_resource_category.sql"),
            new MigrationEntry("resource_course_category", "20231208_14_00_00_resource_course_category", "db/migration/20231208_14_00_00_resource_course_category.sql"),
            new MigrationEntry("resource_extra", "20231208_14_00_00_resource_extra", "db/migration/20231208_14_00_00_resource_extra.sql"),
            new MigrationEntry("user_course_hour_records", "20231208_14_00_00_user_course_hour_records", "db/migration/20231208_14_00_00_user_course_hour_records.sql"),
            new MigrationEntry("user_course_records", "20231208_14_00_00_user_course_records", "db/migration/20231208_14_00_00_user_course_records.sql"),
            new MigrationEntry("user_department", "20231208_14_00_00_user_department", "db/migration/20231208_14_00_00_user_department.sql"),
            new MigrationEntry("user_learn_duration_records", "20231208_14_00_00_user_learn_duration_records", "db/migration/20231208_14_00_00_user_learn_duration_records.sql"),
            new MigrationEntry("user_learn_duration_stats", "20231208_14_00_00_user_learn_duration_stats", "db/migration/20231208_14_00_00_user_learn_duration_stats.sql"),
            new MigrationEntry("user_login_records", "20231208_14_00_00_user_login_records", "db/migration/20231208_14_00_00_user_login_records.sql"),
            new MigrationEntry("user_upload_image_logs", "20231208_14_00_00_user_upload_image_logs", "db/migration/20231208_14_00_00_user_upload_image_logs.sql"),
            new MigrationEntry("users", "20231208_14_00_00_users", "db/migration/20231208_14_00_00_users.sql"),
            new MigrationEntry("ldap_user", "20240322_17_29_17_ldap_user", "db/migration/20240322_17_29_17_ldap_user.sql"),
            new MigrationEntry("ldap_department", "20240322_17_29_30_ldap_department", "db/migration/20240322_17_29_30_ldap_department.sql"),
            new MigrationEntry("", "20250519_09_00_00_migrations-data-insert", "db/migration/20250519_09_00_00_migrations-data-insert.sql"),
            new MigrationEntry("ldap_sync_record", "20250517_13_23_ldap_sync_record", "db/migration/20250517_13_23_ldap_sync_record.sql"),
            new MigrationEntry("ldap_sync_department_detail", "20250519_10_25_01_ldap_sync_department_detail", "db/migration/20250519_10_25_01_ldap_sync_department_detail.sql"),
            new MigrationEntry("ldap_sync_user_detail", "20250519_10_25_02_ldap_sync_user_detail", "db/migration/20250519_10_25_02_ldap_sync_user_detail.sql")
        );

    @Autowired private JdbcTemplate jdbcTemplate;

    @Autowired private MigrationService migrationService;

    @Override
    public void run(String... args) throws Exception {
        try {
            // 数据库已创建的表
            List<String> tables = jdbcTemplate.queryForList("show tables", String.class);
            // 已创建表的记录
            List<String> migrations = new ArrayList<>();
            if (tables.contains("migrations")) {
                migrations = migrationService.all();
            }

            for (MigrationEntry tableItem : TABLE_SQL) {
                String migrationName = tableItem.name();
                if (migrations.contains(migrationName)) {
                    continue;
                }

                String tableName = tableItem.table();
                if (!tables.isEmpty() && tables.contains(tableName)) {
                    // 数据表已创建但是没有创建记录
                    // 需要保存创建记录
                    migrationService.store(migrationName);
                    continue;
                }

                // 创建数据表
                ResourceDatabasePopulator populator = new ResourceDatabasePopulator(
                        new ClassPathResource(tableItem.resourcePath()));
                populator.execute(jdbcTemplate.getDataSource());
                // 记录写入到migrations表中
                migrationService.store(migrationName);
            }

        } catch (Exception e) {
            log.error("数据库迁移执行失败,错误信息:" + e.getMessage());
        }
    }
}
