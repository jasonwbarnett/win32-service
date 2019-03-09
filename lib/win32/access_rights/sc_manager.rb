module Win32
  module AccessRights
    module SCManager
      # Includes STANDARD_RIGHTS_REQUIRED, in addition to all access rights in this table.
      AllAccess = 0xF003F

      # Required to call the CreateService function to create a service object and add it to the database.
      CreateService = 0x0002

      # Required to connect to the service control manager.
      Connect = 0x0001

      # Required to call the EnumServicesStatus or EnumServicesStatusEx function to list the services that are in the database.
      EnumerateService = 0x0004

      # Required to call the LockServiceDatabase function to acquire a lock on the database.
      Lock = 0x0008

      # Required to call the NotifyBootConfigStatus function.
      ModifyBootConfig = 0x0020

      # Required to call the QueryServiceLockStatus function to retrieve the lock status information for the database.
      QueryLockStatus = 0x0010
    end
  end
end
