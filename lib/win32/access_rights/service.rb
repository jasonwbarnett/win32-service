# Reference: https://docs.microsoft.com/en-us/windows/desktop/Services/service-security-and-access-rights#access-rights-for-a-service

module Win32
  module AccessRights
    module Service
      # Includes STANDARD_RIGHTS_REQUIRED in addition to all access rights in this table
      ALL_ACCESS = 0xF003F.freeze

      # Required to call the ChangeServiceConfig or ChangeServiceConfig2 function to change the service configuration. Because this grants the caller the right to change the executable file that the system runs, it should be granted only to administrators.
      CHANGE_CONFIG = 0x0002.freeze

      # Required to call the EnumDependentServices function to enumerate all the services dependent on the service.
      ENUMERATE_DEPENDENTS = 0x0008.freeze

      # Required to call the ControlService function to ask the service to report its status immediately.
      INTERROGATE = 0x0080.freeze

      # Required to call the ControlService function to pause or continue the service.
      PAUSE_CONTINUE = 0x0040.freeze

      # Required to call the QueryServiceConfig and QueryServiceConfig2 functions to query the service configuration.
      QUERY_CONFIG = 0x0001.freeze

      # Required to call the QueryServiceStatus or QueryServiceStatusEx function to ask the service control manager about the status of the service.
      # Required to call the NotifyServiceStatusChange function to receive notification when a service changes status.
      QUERY_STATUS = 0x0004.freeze

      # Required to call the StartService function to start the service.
      START = 0x0010.freeze

      # Required to call the ControlService function to stop the service.
      STOP = 0x0020.freeze

      # Required to call the ControlService function to specify a user-defined control code.
      USER_DEFINED_CONTROL = 0x0100.freeze
    end
  end
end
