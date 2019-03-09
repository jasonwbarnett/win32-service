module Win32
  module AccessRights
    module Service
      # Includes STANDARD_RIGHTS_REQUIRED in addition to all access rights in this table
      AllAccess = 0xF003F

      # Required to call the ChangeServiceConfig or ChangeServiceConfig2 function to change the service configuration. Because this grants the caller the right to change the executable file that the system runs, it should be granted only to administrators.
      ChangeConfig = 0x0002

      # Required to call the EnumDependentServices function to enumerate all the services dependent on the service.
      EnumerateDependents = 0x0008

      # Required to call the ControlService function to ask the service to report its status immediately.
      Interrogate = 0x0080

      # SERVICE_PAUSE_CONTINUE (0x0040)	Required to call the ControlService function to pause or continue the service.

      # SERVICE_QUERY_CONFIG (0x0001)	Required to call the QueryServiceConfig and QueryServiceConfig2 functions to query the service configuration.

      # SERVICE_QUERY_STATUS (0x0004)	Required to call the QueryServiceStatus or QueryServiceStatusEx function to ask the service control manager about the status of the service.

      # Required to call the NotifyServiceStatusChange function to receive notification when a service changes status.

      # SERVICE_START (0x0010)	Required to call the StartService function to start the service.

      # SERVICE_STOP (0x0020)	Required to call the ControlService function to stop the service.

      # SERVICE_USER_DEFINED_CONTROL(0x0100)	Required to call the ControlService function to specify a user-defined control code.
    end
  end
end
