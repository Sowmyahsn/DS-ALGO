@linkedlist
Feature: Verify Linked List module

  Background: User landed in Linked List Page
    Given The user is on home page
    And The user goes to sign in page
    And The user enters valid username and password
    And The user clicks on login button
    And The user goes to LinkedList Page

  @linkedList_submodule_links
  Scenario: Verify all the submodule links in Linked List page
    When User clicks on Introduction submodule link
    Then User validating all the submodules links in "LinkedList" page
    
    @linkedList_links
    Scenario: Verify all the links in Linked List page
    When User clicks on Introduction submodule link
    Then User should see all the links in linkedlist page

  @side_navigation
  Scenario: Verify Side Navigation links in Introduction page
    When User is in the Introduction of Linked list page
    Then User should be able to validate "Side Navigation" links in LinkedList page

  @linkedList_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Introduction of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @linkedList_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Introduction of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @linkedList_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Introduction of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @CreatingLinkedLIst_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Creating Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @CreatingLinkedLIst_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Creating Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @CreatingLinkedLIst_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Creating Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @TypesOfLinkedList_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Types of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @TypesOfLinkedList_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Types of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @TypesOfLinkedList_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Types of Linked list page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Implement_Linked_List_in_Python_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Implement Linked List in Python page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @Implement_Linked_List_in_Python_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Implement Linked List in Python page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Implement_Linked_List_in_Python_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Implement Linked List in Python page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Traversal_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Traversal page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @Traversal_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Traversal page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Traversal_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Traversal page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Insertion_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Insertion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @Insertion_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Insertion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Insertion_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Insertion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Deletion_try_editor
  Scenario: Validate Try here button in Linked list page
    Given User is in the Deletion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page

  @Deletion_invalid_input
  Scenario Outline: Validate Try here button with invalid python code in Linked list
    Given User is in the Deletion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters invalid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then The user should see an alert to signal bad input in Linkedlist module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |

  @Deletion_valid_input
  Scenario Outline: Validate Try here button with valid python code in Linked list page
    Given User is in the Deletion page
    When The user clicks on Try here button in Linked list page
    Then The user should be redirected to tryEditor page of Linked list page
    When The user enters valid python code from excel sheet "<SheetName>" and row number <RowNumber> of Linkedlist module
    And The user clicks on Run button in LinkedList module
    Then Console should display result in LinkedList module

    Examples: 
      | SheetName  | RowNumber |
      | Pythoncode |         0 |
      | Pythoncode |         1 |
  