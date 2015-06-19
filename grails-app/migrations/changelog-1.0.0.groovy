databaseChangeLog = {

	changeSet(author: "amila (generated)", id: "1434654815150-1") {
		createTable(tableName: "user") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "userPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "current_security_level", type: "varchar(255)")

			column(name: "max_security_level", type: "varchar(255)")

			column(name: "password", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "username", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}
}
