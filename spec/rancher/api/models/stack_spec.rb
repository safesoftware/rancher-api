require 'spec_helper'

describe Rancher::Api::Stack do
  context '#all' do
    let(:index) do
      VCR.use_cassette('stacks/index') do
        subject.class.all.to_a.sort_by(&:name)
      end
    end

    it { expect(index.size).to eq(2) }
    it { expect(index.first).to be_instance_of(Rancher::Api::Stack) }
  end

  let(:env) do
    VCR.use_cassette('stacks/1e7') do
      Rancher::Api::Stack.find('1e7')
    end
  end

  context '#find' do
    it { expect(env.name).to eq('hub') }
    it { expect(env.description).to eq('Private Docker Distribution service') }
    it { expect(env.id).to eq('1e7') }
    it { expect(env.state).to eq('active') }
  end

  context 'relationships' do
    context '#services' do
      let(:services) do
        VCR.use_cassette('stacks/services') do
          env.services.to_a
        end
      end

      it { expect(services.size).to eq(1) }
      it { expect(services.map(&:name)).to include('registry')}
      it { expect(services.first).to be_instance_of(Rancher::Api::Service) }
    end
  end
end
