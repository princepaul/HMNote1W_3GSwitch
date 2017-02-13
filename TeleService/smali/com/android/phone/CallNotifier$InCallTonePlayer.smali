.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x4

.field public static final TONE_CALL_REMINDER:I = 0xf

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CDMA_DROP:I = 0x8

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_INTERCEPT:I = 0x7

.field public static final TONE_NONE:I = 0x0

.field static final TONE_OFF:I = 0x0

.field static final TONE_ON:I = 0x1

.field public static final TONE_OTA_CALL_END:I = 0xb

.field public static final TONE_OUT_OF_SERVICE:I = 0x9

.field public static final TONE_REDIAL:I = 0xa

.field static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_HIPRIEST:I = 0x64

.field static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x6

.field public static final TONE_RING_BACK:I = 0xc

.field static final TONE_STOPPED:I = 0x2

.field static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0xd

.field public static final TONE_VOICE_PRIVACY:I = 0x5


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2016
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2017
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2018
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2019
    return-void
.end method

.method private setAudioParametersForEVDO()V
    .locals 2

    .prologue
    .line 2330
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2331
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "SetWarningTone=14"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2334
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "InCallTonePlayer.run(toneId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2025
    const/4 v10, 0x0

    .line 2028
    .local v10, "toneType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2029
    .local v5, "phoneType":I
    const/4 v12, 0x0

    .line 2031
    .local v12, "vibrate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v14, :pswitch_data_0

    .line 2158
    :pswitch_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad toneId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2033
    :pswitch_1
    const/16 v10, 0x16

    .line 2034
    const/16 v11, 0x50

    .line 2036
    .local v11, "toneVolume":I
    const v9, 0x7fffffeb

    .line 2037
    .local v9, "toneLengthMillis":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "button_call_waiting_tone"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2041
    .local v1, "callWaitingTonePreference":I
    packed-switch v1, :pswitch_data_1

    .line 2166
    .end local v1    # "callWaitingTonePreference":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 2167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v14

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v7, 0x6

    .line 2172
    .local v7, "stream":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toneVolume is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2173
    new-instance v8, Landroid/media/ToneGenerator;

    invoke-direct {v8, v7, v11}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    .end local v7    # "stream":I
    .local v8, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v3, 0x1

    .line 2196
    .local v3, "needToStopTone":Z
    const/4 v4, 0x0

    .line 2198
    .local v4, "okToPlayTone":Z
    if-eqz v8, :cond_4

    .line 2199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 2200
    .local v6, "ringerMode":I
    const/4 v14, 0x2

    if-ne v5, v14, :cond_13

    .line 2201
    const/16 v14, 0x5d

    if-ne v10, v14, :cond_e

    .line 2202
    if-eqz v6, :cond_0

    const/4 v14, 0x1

    if-eq v6, v14, :cond_0

    .line 2204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2205
    const/4 v4, 0x1

    .line 2206
    const/4 v3, 0x0

    .line 2233
    :cond_0
    :goto_3
    monitor-enter p0

    .line 2234
    if-eqz v4, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    .line 2235
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v15, "- InCallTonePlayer: startTone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2238
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->setAudioParametersForEVDO()V

    .line 2240
    invoke-virtual {v8, v10}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2241
    const/4 v13, 0x0

    .line 2242
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-eqz v12, :cond_1

    .line 2243
    new-instance v13, Landroid/os/SystemVibrator;

    .end local v13    # "vibrator":Landroid/os/Vibrator;
    invoke-direct {v13}, Landroid/os/SystemVibrator;-><init>()V

    .line 2244
    .restart local v13    # "vibrator":Landroid/os/Vibrator;
    const/16 v14, 0x8

    new-array v14, v14, [J

    fill-array-data v14, :array_0

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    :cond_1
    add-int/lit8 v14, v9, 0x14

    int-to-long v14, v14

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2253
    :goto_4
    if-eqz v13, :cond_2

    .line 2254
    :try_start_3
    invoke-virtual {v13}, Landroid/os/Vibrator;->cancel()V

    .line 2256
    :cond_2
    if-eqz v3, :cond_3

    .line 2257
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2261
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 2262
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v15, "- InCallTonePlayer: stopTone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2267
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2288
    .end local v6    # "ringerMode":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v14, v15, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnlyRingingCallExist()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2290
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)V

    .line 2295
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v14, v15, :cond_7

    .line 2296
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateSpeaker()V

    .line 2300
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2302
    return-void

    .line 2043
    .end local v3    # "needToStopTone":Z
    .end local v4    # "okToPlayTone":Z
    .end local v8    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "callWaitingTonePreference":I
    :pswitch_2
    const/16 v9, 0x1388

    .line 2044
    goto/16 :goto_0

    .line 2046
    :pswitch_3
    const/16 v9, 0x1388

    .line 2047
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2059
    .end local v1    # "callWaitingTonePreference":I
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_4
    const/4 v14, 0x2

    if-ne v5, v14, :cond_8

    .line 2060
    const/16 v10, 0x60

    .line 2061
    const/16 v11, 0x32

    .line 2062
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x3e8

    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2063
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :cond_8
    const/4 v14, 0x1

    if-eq v5, v14, :cond_9

    const/4 v14, 0x3

    if-ne v5, v14, :cond_a

    .line 2065
    :cond_9
    const/16 v10, 0x11

    .line 2066
    const/16 v11, 0x50

    .line 2067
    .restart local v11    # "toneVolume":I
    const/16 v9, 0xfa0

    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2069
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :cond_a
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected phone type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2073
    :pswitch_5
    const/16 v10, 0x12

    .line 2074
    const/16 v11, 0x50

    .line 2075
    .restart local v11    # "toneVolume":I
    const/16 v9, 0xfa0

    .line 2076
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2079
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_6
    const/16 v10, 0x1b

    .line 2080
    const/16 v11, 0x50

    .line 2086
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x200

    .line 2088
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2090
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v14}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    iget-object v14, v14, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v14, v14, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 2092
    const/16 v10, 0x5d

    .line 2093
    const/16 v11, 0x50

    .line 2094
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x2ee

    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2096
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :cond_b
    const/16 v10, 0x1b

    .line 2097
    const/16 v11, 0x50

    .line 2098
    .restart local v11    # "toneVolume":I
    const/16 v9, 0xc8

    .line 2100
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2102
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_8
    const/16 v10, 0x56

    .line 2103
    const/16 v11, 0x50

    .line 2104
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x1388

    .line 2105
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2107
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_9
    const/16 v10, 0x26

    .line 2108
    const/16 v11, 0x50

    .line 2109
    .restart local v11    # "toneVolume":I
    const/16 v9, 0xfa0

    .line 2110
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2112
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_a
    const/16 v10, 0x25

    .line 2113
    const/16 v11, 0x32

    .line 2114
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x1f4

    .line 2115
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2118
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_b
    const/16 v10, 0x5f

    .line 2119
    const/16 v11, 0x32

    .line 2120
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x177

    .line 2121
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2123
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_c
    const/16 v10, 0x57

    .line 2124
    const/16 v11, 0x32

    .line 2125
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x1388

    .line 2126
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2128
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_d
    const/16 v10, 0x17

    .line 2135
    const/16 v11, 0x1c2

    .line 2138
    .restart local v11    # "toneVolume":I
    const v9, 0x7fffffeb

    .line 2139
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2141
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_e
    const/16 v10, 0x15

    .line 2142
    const/16 v11, 0x50

    .line 2146
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x3e8

    .line 2148
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2151
    .end local v9    # "toneLengthMillis":I
    .end local v11    # "toneVolume":I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v15, "InCallTonePlayer.TONE_CALL_NOTIFY "

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2152
    const/16 v10, 0x1b

    .line 2153
    const/16 v11, 0x64

    .line 2154
    .restart local v11    # "toneVolume":I
    const/16 v9, 0x1f4

    .line 2155
    .restart local v9    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2167
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2170
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "stream":I
    goto/16 :goto_1

    .line 2175
    .end local v7    # "stream":I
    :catch_0
    move-exception v2

    .line 2176
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v14, "CallNotifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v8, 0x0

    .restart local v8    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 2208
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "needToStopTone":Z
    .restart local v4    # "okToPlayTone":Z
    .restart local v6    # "ringerMode":I
    :cond_e
    const/16 v14, 0x60

    if-eq v10, v14, :cond_f

    const/16 v14, 0x26

    if-eq v10, v14, :cond_f

    const/16 v14, 0x27

    if-eq v10, v14, :cond_f

    const/16 v14, 0x25

    if-eq v10, v14, :cond_f

    const/16 v14, 0x5f

    if-ne v10, v14, :cond_10

    .line 2213
    :cond_f
    if-eqz v6, :cond_0

    .line 2214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2215
    const/4 v4, 0x1

    .line 2216
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2218
    :cond_10
    const/16 v14, 0x57

    if-eq v10, v14, :cond_11

    const/16 v14, 0x56

    if-ne v10, v14, :cond_12

    .line 2220
    :cond_11
    if-eqz v6, :cond_0

    const/4 v14, 0x1

    if-eq v6, v14, :cond_0

    .line 2222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2223
    const/4 v4, 0x1

    .line 2224
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2227
    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 2230
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 2248
    .restart local v13    # "vibrator":Landroid/os/Vibrator;
    :catch_1
    move-exception v2

    .line 2249
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v14, "CallNotifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "InCallTonePlayer stopped: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2267
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 2031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 2041
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2244
    :array_0
    .array-data 8
        0x0
        0xc8
        0x258
        0xc8
        0xbb8
        0xc8
        0x258
        0xc8
    .end array-data
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2305
    monitor-enter p0

    .line 2306
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2307
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2309
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2310
    monitor-exit p0

    .line 2311
    return-void

    .line 2310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
