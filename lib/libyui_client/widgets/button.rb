# frozen_string_literal: true

module LibyuiClient
  module Widgets
    # Class representing a button in UI. It can be YQWizardButton, YPushButton.
    class Button < Widgets::Widget
      # include Behaviors::Pressable

      def press
        send_action
        self
      end

      # Returns fkey value for the button.
      # @return fkey [Integer] F (function) key that can be used as shortcut to press the button.
      # @example Get fkey value for YQWizardButton
      #   {
      #     "class": "YQWizardButton",
      #     "debug_label": "Cancel",
      #     "fkey": 9,
      #     "id": "cancel",
      #     "label": "&Cancel"
      #   }
      # @example
      #   fkey = app.button(id: 'cancel').fkey # 9
      def fkey
        property(:fkey)
      end
    end
  end
end
