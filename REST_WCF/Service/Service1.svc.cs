using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Activation;

namespace REST_WCF.Service
{
	// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
	// NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Required)]
	public class Service1 : IService1
	{
		public int DoSquare(int value)
		{
			return value * value;
		}

		public String DoWork()
		{
			return "REST WCF Services";
		}

		public int Addition(AddValues valAddition)
		{
			//throw new NotImplementedException();
			return valAddition.val1 + valAddition.val2;
		}
	}
	[DataContract]
	public class AddValues
	{
		[DataMember]
		public int val1 { get; set; }
		[DataMember]
		public int val2 { get; set; }

		public AddValues()
		{
			val1 = 0;
			val2 = 0;
		}
	}
}
