# Mock-as-a-Service
* docker build -t mockasaservice .
* docker run -it --rm -p 8080:8080 mockasaservice

## Upto

POST https://backend.demo.frankiefinancial.io/data/v1/applicants/bab3060b-229e-e1db-1bf8-24225296ea47/checks
201
Request
{
  "deviceCheckDetails": {}
}
Response
{"entityId":"bab3060b-229e-e1db-1bf8-24225296ea47","detailLevel":"full","creditHeaderIssueMessage":"<p>The submitted customer details didn’t match the records held on file by one or all of the credit reporting agencies we checked (Equifax, and/or Experian). Don’t worry, this process didn’t leave any mark on their credit history.</p><p>As per the AML/CTF Act, you are required to notify the customer that their information didn’t match the details held on file by Experian and/or Equifax. Please follow the notification procedure as per your company’s policy guidelines.</p>","serviceDisplayableError":false}


Call webhook
{
   checkId?: string;
  entityId: string;
  function: string;
  functionResult: EnumFunctionStatus;
  notificationType: string;
  requestIentityCustomerReferenced: string;
  message?: string;
  entityCustomerReference?: string;
  requestId: string;
}
EnumFunctionStatus =
 COMPLETED = 'COMPLETED',
    FAILED = 'FAILED',
    INCOMPLETE = 'INCOMPLETE'


GET /entity/${entityId}/checks
get response from frankieone api docs

GET /entity/${entityId}`
get response from frankieone api docs
