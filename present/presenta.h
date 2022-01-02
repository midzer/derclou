#ifndef MODULE_PRESENTA
#define MODULE_PRESENTA

extern void InitPersonPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitCarPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitPlayerPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitBuildingPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitToolPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitObjectPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitEvidencePresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitLootPresent(U32 nr, LIST * presentationData, LIST * texts);
extern void InitOneLootPresent(U32 nr, LIST * presentationData, LIST * texts);

#endif