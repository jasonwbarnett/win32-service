require 'win32/service'

describe Win32::Service do
  describe '::open_sc_manager' do
    it 'returns a pointer' do
      open_sc_manager do |scm_handle|
        expect(scm_handle).not_to be_nil
        expect(scm_handle).not_to eq(0)
      end
    end
  end
end
