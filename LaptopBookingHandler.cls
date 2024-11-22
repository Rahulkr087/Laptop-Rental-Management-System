public class LaptopBookingHandler {
	 public static void sendEmailNotification (List<Laptop_Bookings__c> lapList){

        for(Laptop_Bookings__c lap:lapList)

        {

            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

                email.setToAddresses( new List<String>{lap.email__c});

                email.setSubject('Welcome to our company');

             string body = 'Dear ' +lap.Name +', \n';

             body += 'Welcome to Laptop Rentals! You have been seen as a valuable customer to us.\n Please continue your journey with us, while we try to provide you with good quality resources. \n Laptop Amount = ' + lap.Amount__c + ' \n core type = '+lap.core_type__c +' \n Laptop type = '+lap.Laptop_names__c;

             email.setPlainTextBody(body);

                Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{email});

        }

    }
}