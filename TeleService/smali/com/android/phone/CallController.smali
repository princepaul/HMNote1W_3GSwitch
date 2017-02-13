.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final PHONE_STATE_CHANGED:I = 0xa

.field private static final RESEND_ECC_CALL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallController"

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x1

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0xbb8

.field private static final VDBG:Z = true

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private final mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private mCallIntent:Landroid/content/Intent;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mSlot:I


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p3, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    .line 976
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallController;->mSlot:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 152
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 153
    iput-object p2, p0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 154
    iput-object p3, p0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 155
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 946
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 959
    :goto_0
    return-void

    .line 957
    :cond_0
    const-string v0, "checkForOtaspCall: not an OTASP call."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 798
    packed-switch p1, :pswitch_data_0

    .line 823
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 820
    :goto_0
    return-object v0

    .line 805
    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 816
    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 820
    :pswitch_3
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIfOkToInitiateOutgoingCall(II)Lcom/android/phone/Constants$CallStatusCode;
    .locals 9
    .param p1, "state"    # I
    .param p2, "slot"    # I

    .prologue
    .line 1071
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfOkToInitiateOutgoingCall, state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1073
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v5, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 1074
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1076
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 1077
    .local v1, "geminiSlots":[I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 1078
    .local v2, "gs":I
    if-eq v2, p2, :cond_0

    invoke-static {v5, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getState(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_0

    .line 1079
    sget-object v7, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    .line 1098
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gs":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return-object v7

    .line 1077
    .restart local v0    # "arr$":[I
    .restart local v1    # "geminiSlots":[I
    .restart local v2    # "gs":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gs":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1086
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v7, v7, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v7, :cond_2

    .line 1087
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    iput-object v8, v7, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 1089
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v7, v7, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7, p2}, Lcom/mediatek/phone/DualTalkUtils;->isPhoneCallAllowed(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1090
    sget-object v7, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1094
    :cond_3
    invoke-static {v5, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getServiceState(Lcom/android/internal/telephony/Phone;I)Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 1095
    .local v6, "realState":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "realState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0, v6}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v7

    goto :goto_1

    .line 1098
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "realState":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v7

    goto :goto_1
.end method

.method private forceSpeakerOnByNeeded()V
    .locals 0

    .prologue
    .line 1161
    return-void
.end method

.method private getPhoneForCheckExitedEcm(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "slotId"    # I

    .prologue
    .line 1139
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-static {p1, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    .line 1142
    :cond_0
    return-object p1
.end method

.method private handleDropVoiceCall(Lcom/android/phone/Constants$CallStatusCode;Ljava/lang/String;I)V
    .locals 4
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDropVoiceCall(): status / number / slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1215
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v3, Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1216
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, -0x1

    .line 1217
    .local v0, "errorMessageId":I
    sget-object v2, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1222
    const-string v2, "CallController"

    const-string v3, "handleDropVoiceCall: only status of DROP_VOICECALL can call this function."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_0
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1226
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1227
    const-string v2, "error_message_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    :cond_0
    const-string v2, "show_drop_voicecall"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1230
    const-string v2, "drop_voicecall_number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v2, "drop_voicecall_slot"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1232
    iget-object v2, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 1233
    return-void

    .line 1219
    :pswitch_0
    const v0, 0x7f0b0021

    .line 1220
    goto :goto_0

    .line 1217
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private handleMessageMtk(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessageMtk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 980
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1021
    const-string v2, "handleMessageMtk: not mtk msg."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1024
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 982
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 983
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessageMtk: PHONE_STATE_CHANGED with state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 984
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_1

    .line 985
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 989
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/phone/CallController;->removeMessages(I)V

    .line 991
    const-string v3, "handleMessageMtk: re-send the ecc call!"

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 996
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/phone/CallController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/CallController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 998
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_2

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessageMtk: PHONE_STATE OFFHOOK, isCallIntentNumberSameWithFgCall() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/CallController;->isCallIntentNumberSameWithFgCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0}, Lcom/android/phone/CallController;->isCallIntentNumberSameWithFgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1007
    :cond_2
    const-string v3, "handleMessageMtk: PHONE_STATE_CHANGED continue waiting..."

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v1    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1014
    const-string v3, "handleMessageMtk: real re-send the ecc call!"

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1015
    iget-object v3, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_0

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 7
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    const/high16 v6, 0x10800000

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOutgoingCallError(): status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 843
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v4, Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 849
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, -0x1

    .line 850
    .local v0, "errorMessageId":I
    sget-object v3, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 928
    :pswitch_0
    const-string v3, "CallController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const v0, 0x7f0b02e2

    .line 933
    :goto_0
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 934
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 935
    const-string v3, "error_message_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 937
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 938
    :goto_1
    return-void

    .line 854
    :pswitch_1
    const-string v3, "CallController"

    const-string v4, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    :pswitch_2
    const v0, 0x7f0b02e2

    .line 863
    goto :goto_0

    .line 874
    :pswitch_3
    const v0, 0x7f0b02de

    .line 875
    goto :goto_0

    .line 881
    :pswitch_4
    const v0, 0x7f0b02df

    .line 882
    goto :goto_0

    .line 886
    :pswitch_5
    const v0, 0x7f0b02e0

    .line 887
    goto :goto_0

    .line 893
    :pswitch_6
    const v0, 0x7f0b02e1

    .line 894
    goto :goto_0

    .line 903
    :pswitch_7
    const-string v3, "show_missing_voicemail"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 919
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v4, Lcom/android/phone/MMIDialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    .local v2, "mmiIntent":Landroid/content/Intent;
    const-string v3, "com.android.phone.extra.slot"

    iget v4, p0, Lcom/android/phone/CallController;->mSlot:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 923
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)Lcom/android/phone/CallController;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p2, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 134
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 140
    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 138
    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCallIntentNumberSameWithFgCall()Z
    .locals 4

    .prologue
    .line 1187
    iget-object v2, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1188
    .local v0, "activeFgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1189
    const-string v2, "activeFgCall != null && activeFgCall.getLatestConnection() != null"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "fgCallNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    const/4 v2, 0x1

    .line 1200
    .end local v1    # "fgCallNumber":Ljava/lang/String;
    :goto_0
    return v2

    .line 1197
    .restart local v1    # "fgCallNumber":Ljava/lang/String;
    :cond_0
    const-string v2, "isCallIntentNumberSameWithFgCall fgCallNumber == null"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1200
    .end local v1    # "fgCallNumber":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInProcessForAirplaneMode(Lcom/android/phone/Constants$CallStatusCode;)Z
    .locals 1
    .param p1, "serviceState"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    .line 1209
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 967
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 37
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v35

    .line 373
    .local v35, "uri":Landroid/net/Uri;
    if-eqz v35, :cond_0

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    .line 375
    .local v31, "scheme":Ljava/lang/String;
    :goto_0
    const/16 v30, 0x0

    .line 379
    .local v30, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallController;->mSlot:I

    .line 380
    const/16 v28, 0x0

    .line 384
    .local v28, "isVideoCall":Z
    const-string v2, "placeCallInternal() FeatureOption.MTK_VT3G324M_SUPPORT = false"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 387
    const/16 v26, 0x0

    .line 395
    .local v26, "isIMSOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCallInternal() slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallController;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v29

    .line 412
    .local v29, "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, "number":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- actual number to dial: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 421
    const-string v2, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 423
    .local v33, "sipPhoneUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v2, v0, v4, v1}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- got Phone instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    if-nez v4, :cond_2

    .line 448
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 782
    .end local v4    # "number":Ljava/lang/String;
    .end local v33    # "sipPhoneUri":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 373
    .end local v26    # "isIMSOnly":Z
    .end local v28    # "isVideoCall":Z
    .end local v29    # "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    .end local v30    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v31    # "scheme":Ljava/lang/String;
    :cond_0
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 434
    .restart local v26    # "isIMSOnly":Z
    .restart local v28    # "isVideoCall":Z
    .restart local v29    # "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    .restart local v30    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v31    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 439
    .local v22, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1

    .line 440
    const-string v2, "Voicemail number not reachable in current SIM card state."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    move-object/from16 v2, v29

    .line 441
    goto :goto_1

    .line 443
    :cond_1
    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 444
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 454
    .end local v22    # "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v33    # "sipPhoneUri":Ljava/lang/String;
    :cond_2
    const-string v2, "com.android.phone.IS_CONTACT"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->addCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    :cond_3
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v25

    .line 478
    .local v25, "isEmergencyNumber":Z
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 485
    .local v24, "isEmergencyIntent":Z
    if-eqz v25, :cond_5

    .line 486
    if-eqz v28, :cond_4

    .line 487
    const-string v2, "com.android.phone.extra.video"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    const/16 v28, 0x0

    .line 491
    :cond_4
    if-eqz v26, :cond_5

    .line 492
    const-string v2, "com.mediatek.phone.extra.ims"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    const/16 v26, 0x0

    .line 514
    :cond_5
    if-nez v25, :cond_6

    if-eqz v24, :cond_6

    .line 515
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with non-potential-emergency number "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " -- failing call."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 526
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v25, :cond_7

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_7

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getEmergencyVoiceSubscription()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallController;->mSlot:I

    .line 532
    :cond_7
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_12

    .line 533
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v29

    .line 535
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v2, v2, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v2, :cond_8

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 539
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v2, v2, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/DualTalkUtils;->isPhoneCallAllowed(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 540
    sget-object v29, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    .line 549
    :cond_9
    :goto_2
    if-eqz v25, :cond_c

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v2, :cond_a

    .line 552
    new-instance v2, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 554
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallController;->mSlot:I

    move/from16 v21, v0

    .line 567
    .local v21, "eccSlot":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v34

    .line 568
    .local v34, "tempPhone":Lcom/android/internal/telephony/Phone;
    const/16 v27, 0x0

    .line 569
    .local v27, "isRadioOn":Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 570
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOn(Lcom/android/internal/telephony/Phone;I)Z

    move-result v27

    .line 573
    :cond_b
    if-eqz v27, :cond_13

    .line 574
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(II)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v29

    .line 591
    .end local v21    # "eccSlot":I
    .end local v27    # "isRadioOn":Z
    .end local v34    # "tempPhone":Lcom/android/internal/telephony/Phone;
    :cond_c
    if-eqz v25, :cond_e

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_d

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_e

    .line 594
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 595
    sget-object v29, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> UPDATING status to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 605
    :cond_e
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->isInProcessForAirplaneMode(Lcom/android/phone/Constants$CallStatusCode;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_15

    .line 610
    :cond_f
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: isInProcessForAirplaneMode : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->isInProcessForAirplaneMode(Lcom/android/phone/Constants$CallStatusCode;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz v25, :cond_14

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->isInProcessForAirplaneMode(Lcom/android/phone/Constants$CallStatusCode;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 614
    :cond_10
    const-string v2, "CallController"

    const-string v3, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-enter p0

    .line 618
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v2, :cond_11

    .line 619
    new-instance v2, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 621
    :cond_11
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 633
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 544
    :cond_12
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallController;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(II)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v29

    goto/16 :goto_2

    .line 554
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 578
    .restart local v21    # "eccSlot":I
    .restart local v27    # "isRadioOn":Z
    .restart local v34    # "tempPhone":Lcom/android/internal/telephony/Phone;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    move/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallExt(Ljava/lang/String;I)V

    .line 579
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 621
    .end local v21    # "eccSlot":I
    .end local v27    # "isRadioOn":Z
    .end local v34    # "tempPhone":Lcom/android/internal/telephony/Phone;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 637
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/CallController;->mSlot:I

    invoke-virtual/range {v2 .. v13}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIII)V

    move-object/from16 v2, v29

    .line 650
    goto/16 :goto_1

    .line 658
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 661
    .local v5, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/phone/CallGatewayManager;->getRawGatewayInfo(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v7

    .line 675
    .local v7, "rawGatewayInfo":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    if-nez v25, :cond_16

    if-eqz v24, :cond_17

    :cond_16
    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/CallController;->mSlot:I

    move-object/from16 v2, p0

    move-object/from16 v3, v30

    move/from16 v10, v28

    move/from16 v11, v26

    invoke-direct/range {v2 .. v11}, Lcom/android/phone/CallController;->placeCallInternalPlaceCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZZ)I

    move-result v20

    .line 680
    .local v20, "callStatus":I
    packed-switch v20, :pswitch_data_0

    .line 780
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: unknown callStatus "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 675
    .end local v20    # "callStatus":I
    :cond_17
    const/4 v6, 0x0

    goto :goto_3

    .line 682
    .restart local v20    # "callStatus":I
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallController;->mSlot:I

    move-object/from16 v0, v30

    invoke-static {v4, v2, v0}, Lcom/android/phone/PhoneUtils;->isVoicemailNumber(Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Z

    move-result v36

    .line 696
    .local v36, "voicemailUriSpecified":Z
    const/16 v23, 0x0

    .line 698
    .local v23, "exitedEcm":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallController;->mSlot:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallController;->getPhoneForCheckExitedEcm(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v32

    .line 700
    .local v32, "selectedPhone":Lcom/android/internal/telephony/Phone;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v25, :cond_18

    .line 701
    const-string v2, "CallController"

    const-string v3, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v23, 0x1

    .line 705
    :cond_18
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_19

    .line 710
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 725
    const/4 v2, 0x1

    const-wide/16 v8, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    :cond_19
    if-eqz v23, :cond_1a

    .line 732
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 734
    :cond_1a
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 738
    .end local v23    # "exitedEcm":Z
    .end local v32    # "selectedPhone":Lcom/android/internal/telephony/Phone;
    .end local v36    # "voicemailUriSpecified":Z
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 760
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 763
    :pswitch_2
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallController;->mSlot:I

    move/from16 v19, v0

    move-object v10, v4

    invoke-virtual/range {v8 .. v19}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIII)V

    .line 773
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 776
    :pswitch_3
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP_VOICECALL:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DROP_VOICECALL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private placeCallInternalPlaceCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZZ)I
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactUri"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "rawGatewayInfo"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .param p6, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;
    .param p7, "slot"    # I
    .param p8, "isVideoCall"    # Z
    .param p9, "isIMSOnly"    # Z

    .prologue
    .line 1122
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZ)I

    move-result v0

    .line 1126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;Z)I

    move-result v0

    goto :goto_0
.end method

.method private placeCallPreCheck(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1036
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    move v7, v9

    .line 1039
    .local v7, "isEccCall":Z
    :goto_0
    iget-object v12, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 1040
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    if-eqz v7, :cond_5

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v12, :cond_5

    .line 1041
    iget-object v12, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1042
    .local v6, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1043
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "activeCallAddress":Ljava/lang/String;
    :goto_1
    iget-object v12, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1046
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1047
    .local v3, "bgconnection":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, "bgCallAddress":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1054
    :cond_1
    const/16 v11, 0xa

    invoke-static {p0, v11}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;I)V

    .line 1055
    iput-object p1, p0, Lcom/android/phone/CallController;->mCallIntent:Landroid/content/Intent;

    .line 1057
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hangupAllEx()Z

    .line 1058
    const-string v11, "placeCallPreCheck: Waiting for disconnect exist calls."

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v0    # "activeCallAddress":Ljava/lang/String;
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "bgCallAddress":Ljava/lang/String;
    .end local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    :goto_3
    return v10

    .end local v7    # "isEccCall":Z
    .end local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    move v7, v10

    .line 1036
    goto :goto_0

    .restart local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    .restart local v7    # "isEccCall":Z
    .restart local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_3
    move-object v0, v11

    .line 1043
    goto :goto_1

    .restart local v0    # "activeCallAddress":Ljava/lang/String;
    .restart local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    :cond_4
    move-object v2, v11

    .line 1047
    goto :goto_2

    .line 1060
    .restart local v2    # "bgCallAddress":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1061
    .local v5, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "placeCallPreCheck: catch exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .end local v0    # "activeCallAddress":Ljava/lang/String;
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "bgCallAddress":Ljava/lang/String;
    .end local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_5
    :goto_4
    move v10, v9

    .line 1067
    goto :goto_3

    .line 1064
    .restart local v0    # "activeCallAddress":Ljava/lang/String;
    .restart local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v2    # "bgCallAddress":Ljava/lang/String;
    .restart local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    .restart local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_6
    const-string v10, "placeCallPreCheck: Let\'s FW reject the call request."

    invoke-static {v10}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private showExitedECMDialog()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v2, Lcom/android/phone/ExitedEMCDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->handleMessageMtk(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :pswitch_0
    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallModeler;->setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmptyNumber(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1171
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "initNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    const-string v2, "placeCall: called with empty number"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    const/4 v2, 0x1

    .line 1179
    .end local v1    # "initNumber":Ljava/lang/String;
    :goto_0
    return v2

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const-string v2, "placeCall: throwed VoiceMailNumberMissingException"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1179
    .end local v0    # "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall()...  intent = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "                extras = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v11, "CallController"

    const-string v12, "placeCall: called with null intent"

    invoke-static {v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "placeCall: called with null intent"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 235
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 236
    const-string v11, "CallController"

    const-string v12, "placeCall: intent had no data"

    invoke-static {v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "placeCall: intent had no data"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 247
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "scheme":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "number":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 251
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- uri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- scheme: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallController;->placeCallPreCheck(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 345
    :goto_0
    return-void

    .line 265
    :cond_2
    const-string v11, "android.intent.action.CALL"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 268
    const-string v11, "CallController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "placeCall: unexpected intent action "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 275
    :cond_3
    iget-object v11, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 276
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 277
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 288
    :cond_4
    iget-object v11, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v9

    .line 291
    .local v9, "status":Lcom/android/phone/Constants$CallStatusCode;
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v3

    .line 292
    .local v3, "flag":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 294
    sget-object v11, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v9}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v9}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 297
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/phone/PhoneGlobals;->startInCallActivity(Z)V

    goto/16 :goto_0

    .line 301
    :pswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/phone/PhoneGlobals;->startInCallActivity(Z)V

    .line 303
    invoke-direct {p0}, Lcom/android/phone/CallController;->showExitedECMDialog()V

    goto/16 :goto_0

    .line 312
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 313
    .local v1, "bExtras":Landroid/os/Bundle;
    const-string v11, "com.android.phone.extra.slot"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 314
    .local v8, "slot":I
    const/4 v6, 0x0

    .line 316
    .local v6, "realNumber":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 321
    :goto_1
    const-string v11, "ready for show dialog ... "

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v9, v6, v8}, Lcom/android/phone/CallController;->handleDropVoiceCall(Lcom/android/phone/Constants$CallStatusCode;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 319
    const/4 v6, 0x0

    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
