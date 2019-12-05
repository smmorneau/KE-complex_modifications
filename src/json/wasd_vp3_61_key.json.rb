#!/usr/bin/env ruby

# $ ruby ./smmorneau.json.rb

require 'json'
require_relative '../lib/karabiner.rb'

def main
  puts JSON.pretty_generate(
    'title' => 'WASD VP3 61-Key',
    'rules' => [
      {
        "description": "Left Command to Left Option",
        "manipulators": [
          {
            "from": {
              "key_code": "left_command",
              "modifiers": {
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "left_option",
                "modifiers": ["any"]
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Left Option to Left Command",
        "manipulators": [
          {
            "from": {
              "key_code": "left_option",
              "modifiers": {
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "left_command",
                "modifiers": ["any"]
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Caps Lock to Tab",
        "manipulators": [
          {
            "from": {
              "key_code": "caps_lock",
              "modifiers": {
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "tab",
                "modifiers": ["any"]
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Tab to Backtick",
        "manipulators": [
          {
            "from": {
              "key_code": "tab",
              "modifiers": {
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "grave_accent_and_tilde",
                "modifiers": ["any"]
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Forward Delete",
        "manipulators": [
          {
            "from": {
              "key_code": "delete_or_backspace",
              "modifiers": {
                "mandatory": [
                  "shift"
                ],
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "delete_forward"
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Hyper or Caps Lock on press and hold",
        "manipulators": [
          {
            "from": {
              "key_code": "left_control",
              "modifiers": {
                "optional": ["any"]
              }
            },
            "to": [
              {
                "key_code": "right_shift",
                "modifiers": [
                  "right_command",
                  "right_control",
                  "right_option"
                ]
              }
            ],
            "to_if_alone": [
              {
                  "key_code": "caps_lock",
                  "hold_down_milliseconds": 500
              }
            ],
            "type": "basic"
          }
        ]
      },
            {
        "description": "Arrows",
        "manipulators": [
          {
            "from": {
              "key_code": "h",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "left_arrow"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "j",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "down_arrow"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "k",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "up_arrow"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "l",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "right_arrow"
              }
            ],
            "type": "basic"
          }
        ]
      },
      {
        "description": "Home, End, Page Up, Page Down",
        "manipulators": [
          {
            "from": {
              "key_code": "i",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "page_up"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "o",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "page_down"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "u",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "home"
              }
            ],
            "type": "basic"
          },
          {
            "from": {
              "key_code": "p",
              "modifiers": {
                "mandatory": [
                  "right_command",
                  "right_control",
                  "right_shift",
                  "right_option"
                ]
              }
            },
            "to": [
              {
                "key_code": "end"
              }
            ],
            "type": "basic"
          }
        ]
      }
    ]
  )
end

main
