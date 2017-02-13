.class public Lcom/mediatek/phone/EmergencyRuleHandler;
.super Ljava/lang/Object;
.source "EmergencyRuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;,
        Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;,
        Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;,
        Lcom/mediatek/phone/EmergencyRuleHandler$CdmaLockedAndGsmReady;,
        Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;,
        Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;,
        Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;,
        Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;,
        Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field public static final ECC_INVALIDE_SLOT:I = -0x1

.field public static final ECC_SLOT_1:I = 0x0

.field public static final ECC_SLOT_2:I = 0x1

.field static final TAG:Ljava/lang/String; = "EmergencyRuleHandler"


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mPreSlot:I

.field mRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mPreSlot:I

    .line 40
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mNumber:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    .line 42
    return-void
.end method

.method private generateHandlerList()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$GCNoSimRule;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$DefaultHandler;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 53
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$CDMAOnlyRule;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaLockedAndGsmReady;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaLockedAndGsmReady;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaReadyAndGsmLocked;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;-><init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleRequest()V
    .locals 5

    .prologue
    .line 66
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mRuleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;

    .line 67
    .local v1, "rule":Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mNumber:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;->handleRequest(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "slot":I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    .line 69
    iput v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mPreSlot:I

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRequest find prefered slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mPreSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 74
    .end local v1    # "rule":Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;
    .end local v2    # "slot":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getPreferedSlot()I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/phone/EmergencyRuleHandler;->generateHandlerList()V

    .line 78
    invoke-direct {p0}, Lcom/mediatek/phone/EmergencyRuleHandler;->handleRequest()V

    .line 79
    iget v0, p0, Lcom/mediatek/phone/EmergencyRuleHandler;->mPreSlot:I

    return v0
.end method

.method getProperSlot(I)I
    .locals 4
    .param p1, "radioType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 308
    const/4 v0, -0x1

    .line 309
    .local v0, "slot":I
    if-ne p1, v3, :cond_2

    .line 310
    invoke-static {v1}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getPhoneType(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 311
    const/4 v0, 0x0

    .line 322
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperSlot with radioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and return slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 323
    return v0

    .line 312
    :cond_1
    invoke-static {v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getPhoneType(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 313
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    if-ne p1, v2, :cond_0

    .line 316
    invoke-static {v1}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getPhoneType(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 317
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_3
    invoke-static {v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getPhoneType(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 319
    const/4 v0, 0x1

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "EmergencyRuleHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method simStateToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "s":Ljava/lang/String;
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simStateToString: invalid state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 275
    const-string v0, "INVALIDE_STATE"

    .line 278
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    return-object v0

    .line 280
    :pswitch_0
    const-string v0, "SIM_STATE_UNKNOWN"

    .line 281
    goto :goto_0

    .line 284
    :pswitch_1
    const-string v0, "SIM_STATE_ABSENT"

    .line 285
    goto :goto_0

    .line 288
    :pswitch_2
    const-string v0, "SIM_STATE_PIN_REQUIRED"

    .line 289
    goto :goto_0

    .line 292
    :pswitch_3
    const-string v0, "SIM_STATE_PUK_REQUIRED"

    .line 293
    goto :goto_0

    .line 296
    :pswitch_4
    const-string v0, "SIM_STATE_NETWORK_LOCKED"

    .line 297
    goto :goto_0

    .line 300
    :pswitch_5
    const-string v0, "SIM_STATE_READY"

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
