.class Lcom/android/phone/BluetoothPhoneService$3;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 3068
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3070
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3071
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    .prologue
    .line 3062
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3064
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3065
    return-void
.end method

.method public getDefaultSIM()I
    .locals 3

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2400(Lcom/android/phone/BluetoothPhoneService;)I

    move-result v0

    return v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3026
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2400(Lcom/android/phone/BluetoothPhoneService;)I

    move-result v0

    .line 3030
    .local v0, "slotId":I
    invoke-static {v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3035
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->getDefaultSIM()I

    move-result v0

    invoke-static {v2, v0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getLine1Number(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangupCall()Z
    .locals 3

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 3006
    :goto_0
    return v0

    .line 3000
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3001
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 3002
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3003
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 3006
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    .prologue
    .line 3042
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3044
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3045
    const/4 v1, 0x1

    return v1
.end method

.method public processChld(I)Z
    .locals 1
    .param p1, "chld"    # I

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleNormalChld(I)Z
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothPhoneService;->access$2300(Lcom/android/phone/BluetoothPhoneService;I)Z

    move-result v0

    return v0
.end method

.method public queryPhoneState()Z
    .locals 4

    .prologue
    .line 3049
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3051
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3052
    const/4 v1, 0x1

    return v1
.end method

.method public restrictMultitalks()V
    .locals 4

    .prologue
    .line 3082
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3084
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3085
    return-void
.end method

.method public sendDtmf(I)Z
    .locals 3
    .param p1, "dtmf"    # I

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    return v0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$2600(Lcom/android/phone/BluetoothPhoneService;)V

    .line 3059
    return-void
.end method
