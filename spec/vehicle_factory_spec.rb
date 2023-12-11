require 'spec_helper'

RSpec.describe VehicleFactory do
    it 'exits' do
        factory = VehicleFactory.new
        expect(factory).to be_an_instance_of(VehicleFactory)
        

    end

    it 'can create vehicles' do
        factory = VehicleFactory.new
        wa_ev_registrations = DmvDataService.new.wa_ev_registrations
        expect(factory.create_vehicles(wa_ev_registrations)).to be_an Array
        expect(factory.create_vehicles(wa_ev_registrations)[0]).to be_an_instance_of Vehicle
    end
end