# Study Space
like spots and like you like uh study fam but like yeah

Data 
------

**Spot:** 
- Location 		(text)
- Description		(text)
- Name			(text)
- Type of location	(enum)
- Ambiance		(enum)
- Status {its lit}	(hasmany)
- Rating		(hasmany)
- Checkins		(integer)
- Warnings {optional} 	(hasmany)

**User:**
- Name (or random)	(text)
- Email			(text)
- Password		(text)
- Checkins		(hasmany)
- Favses		(hasmany)

**Status:**
- Description		(text)
- Time			(timestamp)

**Rating:**
- rating		(integer)

**Warning:**
- Warning		(text)
- Severity		(enum)
- Creation date		(timestamp)

**Checkin:**
- Spot			(hasmany)
- User			(id)
- Date			(timestamp)


