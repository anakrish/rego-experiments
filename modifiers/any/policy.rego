package policy

import future.keywords

deny if { 
      input.type== "virtualMachine"
      input.subscriptionId == "someguid"

      sdp_modifier
}

# No modifiers have been specified
sdp_modifier if not data.sdp.modifiers

# All modifiers must be true
sdp_modifier if {
      # Find any modifer that is true
      some modifier in data.sdp.modifiers
      modifier == true
}
