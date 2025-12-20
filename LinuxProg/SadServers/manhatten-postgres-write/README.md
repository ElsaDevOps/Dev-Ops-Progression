

Scenario: "Manhattan": can't write data into database.

Level: Medium

Type: Fix

Tags: disk volumes   postgres   realistic-interviews   systemd  

Access: Public

Description: Your objective is to be able to insert a row in an existing Postgres database. The issue is not specific to Postgres and you don't need to know details about it (although it may help).

Helpful Postgres information: it's a service that listens to a port (:5432) and writes to disk in a data directory, the location of which is defined in the data_directory parameter of the configuration file /etc/postgresql/14/main/postgresql.conf. In our case Postgres is managed by systemd as a unit with name postgresql.

Root (sudo) Access: True

Test: (from default admin user) sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt

Should return:INSERT 0 1

Time to Solve: 20 minutes.

**Root Cause**:
There was a disk space issue, `/opt/pgdata/file1.bk` and `/opt/pgdata/file2.bk' files filled the disk.
There was an initial error message about the socket file that was misleading. It pointed to /var/run/postgresql issues but the real issue was a lack of disk space preventing Postgres from starting at all

**Solution**:
1. Check service status (it showed active (exited) which signalled issues with Postgres starting)
2. Review logs to find disk space error
3. Identify the large backup files
4. Remove logs with rm
5. Restart Postgres

# What I learned
- Always look at the service status to see if the service is actually running correclty.
- Check disk space early in troubleshooting
- Services can fail silently when they can't write

