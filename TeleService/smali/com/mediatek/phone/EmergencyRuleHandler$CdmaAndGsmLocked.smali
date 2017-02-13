.class Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;
.super Ljava/lang/Object;
.source "EmergencyRuleHandler.java"

# interfaces
.implements Lcom/mediatek/phone/EmergencyRuleHandler$RuleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/EmergencyRuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CdmaAndGsmLocked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, -0x1

    .line 170
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v4, "CdmaAndGsmLocked: handleRequest..."

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v3, v7}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v1

    .line 176
    .local v1, "gsmState":I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v0

    .line 177
    .local v0, "cdmaState":I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAndGsmLocked: gsmState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAndGsmLocked: cdmaState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 180
    if-eq v1, v8, :cond_0

    if-eq v0, v8, :cond_0

    .line 182
    const-string v3, "120"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "110"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "119"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "999"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    .line 184
    :cond_3
    const-string v3, "112"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "911"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmLocked;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v7}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto/16 :goto_0
.end method
