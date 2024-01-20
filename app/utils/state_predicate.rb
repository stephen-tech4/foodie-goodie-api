module StatePredicate
  extend ActiveSupport::Concern

  module ClassMethods
    def state_predicate_for(method, *states)
      if states.first.is_a?(Hash)
        states.first.each do |k, v|
          define_method(:"#{v}?") do
            public_send(method)&.parameterize&.underscore == k.to_s.downcase
          end
        end
      else
        states.each do |s|
          define_method(:"#{s}?") do
            public_send(method)&.parameterize&.underscore == s.to_s
          end
        end
      end
    end
  end
end
