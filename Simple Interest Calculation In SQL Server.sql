----- Creating User Defined Functions 

CREATE FUNCTION Details.CalculateSimpleInterest
(
	@pPrincipalAmount DECIMAL(18,2), 
	@pInterestRate DECIMAL(18,2),
	@pDuration DECIMAL(18,2)
)
RETURNS INT 
AS 
	BEGIN 
		RETURN (@pPrincipalAmount*@pInterestRate*@pDuration/100)

	END



------ Executing Function 

SELECT Details.CalculateSimpleInterest(100000,9.5,5) AS [Simple Interest Rate]