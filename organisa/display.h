#ifndef MODULE_DISPLAY
#define MODULE_DISPLAY

extern void tcInitDisplayOrganisation(void);
extern void tcDoneDisplayOrganisation(void);

extern void tcDisplayOrganisation(void);

extern void tcDisplayCommon(void);
extern void tcDisplayPerson(U32 displayMode);
extern void tcDisplayAbilities(U32 personNr, U32 displayData);
extern void tcDisplayTools(U32 personNr, U32 displayData);

#endif