# Reference: https://docs.microsoft.com/en-us/windows/desktop/Services/service-security-and-access-rights#access-rights-for-the-service-control-manager

module Win32
  module AccessRights
    module SCManager
      # Includes STANDARD_RIGHTS_REQUIRED, in addition to all access rights in this table.
      ALL_ACCESS = 0xF003F.freeze

      # Required to call the CreateService function to create a service object and add it to the database.
      CREATE_SERVICE = 0x0002.freeze

      # Required to connect to the service control manager.
      CONNECT = 0x0001.freeze

      # Required to call the EnumServicesStatus or EnumServicesStatusEx function to list the services that are in the database.
      ENUMERATE_SERVICE = 0x0004.freeze

      # Required to call the LockServiceDatabase function to acquire a lock on the database.
      LOCK = 0x0008.freeze

      # Required to call the NotifyBootConfigStatus function.
      MODIFY_BOOT_CONFIG = 0x0020.freeze

      # Required to call the QueryServiceLockStatus function to retrieve the lock status information for the database.
      QUERY_LOCK_STATUS = 0x0010.freeze
    end
  end
end
