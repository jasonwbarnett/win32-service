require 'win32/service'

describe Win32::Service do
  describe '::open_sc_manager' do
    context 'when passed a block' do
      it 'yields a pointer to a scm handle' do
        described_class.open_sc_manager do |scm_handle|
          expect(scm_handle).not_to be_nil
          expect(scm_handle).not_to eq(0)
          expect(scm_handle).to be_a(Integer)
        end
      end
    end
  end
end
