*** Variables ***
# xpath
${box_home}    //label[@for='tree-node-home']/span[contains(@class,'rct-checkbox')]
${expand_home}    //span[@class='rct-text'][label[@for='tree-node-home']]//button

${box_desktop}    //label[@for='tree-node-desktop']/span[contains(@class,'rct-checkbox')]
${expand_desktop}    //span[@class='rct-text'][label[@for='tree-node-desktop']]//button

${box_documents}    //label[@for='tree-node-documents']/span[contains(@class,'rct-checkbox')]
${expand_documents}    //span[@class='rct-text'][label[@for='tree-node-documents']]//button

${box_downloads}    //label[@for='tree-node-downloads']/span[contains(@class,'rct-checkbox')]
${expand_downloads}    //span[@class='rct-text'][label[@for='tree-node-downloads']]//button 