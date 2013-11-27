module Worker

  def self.work (rounds=1, &block)

    # I'm doing an acumulation
    # result = nil
    # rounds.times { result = yield }
    # result

    # CRAIG's SOLUTION
    # (0..rounds).inject {yield}

    # Renée's solution
    rounds.times.inject(nil){ yield }

    # Whenever you have an accumulator, you should look at inject
  end



end