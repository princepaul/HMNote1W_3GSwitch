.class Lcom/android/phone/MiuiNotificationMgr$1;
.super Landroid/os/Handler;
.source "MiuiNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiNotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiNotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiNotificationMgr;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/MiuiNotificationMgr;->showVoiceRoamingOn()V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 69
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v3

    .line 70
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 71
    .local v0, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 72
    .local v1, "geminiSlots":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 73
    aget v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    iget-object v4, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 76
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v1    # "geminiSlots":[I
    .end local v2    # "i":I
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :cond_1
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    iget-object v4, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 84
    .restart local v4    # "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/MiuiNotificationMgr;->hideVoiceRoamingOn()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
