
class Verify_text_On_page(object):

    ROBOT_LIBRARY_SCOPE = 'TEST_SUITE'
    __version__ = '0.1'


    def Verify_text(self,text):
        """
            It's some method for Verify text on the page
        """

        current_text = "Contact Us"
        if text == current_text:
            print("Text is correct")
        else: print("Error - Text is NOT correct")


    def E2E_Verify_Ad_Delivery_Status(self):
        """
             It's some method for Verify_Ad_Delivery_Status
         """
        pass




