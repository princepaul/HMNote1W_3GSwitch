.class Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;
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
    name = "CdmaAndGsmReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v2, -0x1

    const/4 v6, 0x2

    .line 245
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v4, "CdmaAndGsmReady: handleRequest..."

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v3, v3, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v1

    .line 251
    .local v1, "gsmState":I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v0

    .line 252
    .local v0, "cdmaState":I
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAndGsmReady: gsmState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaAndGsmReady: cdmaState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 255
    if-ne v1, v7, :cond_0

    if-ne v0, v7, :cond_0

    .line 256
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$CdmaAndGsmReady;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0
.end method
