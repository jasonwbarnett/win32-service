require 'win32/service'

describe Win32::Service do
  describe '::open_sc_manager' do
    it 'returns a pointer' do
      expect(described_class.open_sc_manager).not_to be_nil
      expect(described_class.open_sc_manager).not_to be_null
    end
  end
end
