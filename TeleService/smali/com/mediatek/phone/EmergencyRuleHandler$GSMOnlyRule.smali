.class Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;
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
    name = "GSMOnlyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/EmergencyRuleHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/EmergencyRuleHandler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)I
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 106
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    const-string v4, "GSMOnlyRule: handleRequest..."

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v6, :cond_1

    :cond_0
    move v2, v3

    .line 130
    :goto_0
    return v2

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    iget-object v2, v2, Lcom/mediatek/phone/EmergencyRuleHandler;->mSimList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 111
    .local v0, "slot":I
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    if-eq v0, v2, :cond_2

    move v2, v3

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v1

    .line 115
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSMOnlyRule: simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v5, v1}, Lcom/mediatek/phone/EmergencyRuleHandler;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/phone/EmergencyRuleHandler;->log(Ljava/lang/String;)V

    .line 117
    if-eq v1, v7, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    if-nez v1, :cond_6

    .line 121
    :cond_3
    const-string v2, "112"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "911"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v7}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    .line 126
    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 127
    iget-object v2, p0, Lcom/mediatek/phone/EmergencyRuleHandler$GSMOnlyRule;->this$0:Lcom/mediatek/phone/EmergencyRuleHandler;

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/EmergencyRuleHandler;->getProperSlot(I)I

    move-result v2

    goto :goto_0

    :cond_7
    move v2, v3

    .line 130
    goto :goto_0
.end method
