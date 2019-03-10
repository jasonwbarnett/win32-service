require 'win32/service'

describe Win32::Service do
  describe '::open_sc_manager' do
    it 'returns a pointer' do
      described_class.open_sc_manager do |scm_handle|
        expect(scm_handle).not_to be_nil
        expect(scm_handle).not_to eq(0)
        expect(scm_handle).to be_a(Integer)
      end
    end
  end
end
