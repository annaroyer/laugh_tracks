describe Comedian do
  describe "Class methods" do
    describe ".average_age" do
      it "returns the average age of all comedians" do
        Comedian.create(name "Bob", age: 30)
        Comedian.create(name "Jill", age:45)
        Comedian.create(name "Sarah", age: 25)

        expect(Comedian.average_age).to eq(33.33)
      end
    end

    describe "Instance Methods" do
      describe "#specials_count" do
        it "returns the comedian's number of specials" do
          comedian = Comedian.create(name: 'Sarah', age: 35)
          Special.create(name: 'laugh a lot', comedian_id: 1)
          Special.create(name: 'laugh a lot', comedian_id: 1)
          Special.create(name: 'laugh a lot', comedian_id: 1)

          expect(comedian.specials_count).to eq(3)
        end
      end
    end
  end
end
