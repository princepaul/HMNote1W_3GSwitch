.class public abstract Lcom/mediatek/calloption/VoiceMailCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "VoiceMailCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceMailCallOptionHandler"


# instance fields
.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "VoiceMailCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 10
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    const/4 v9, -0x1

    .line 62
    const-string v5, "handleRequest()"

    invoke-static {v5}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->log(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 64
    const-string v5, "voicemail:"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 78
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 80
    .local v0, "defaultSim":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 81
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 82
    .local v2, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "simId"

    iget v7, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .end local v2    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.slot"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "slot":I
    if-ne v9, v3, :cond_3

    .line 89
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {p0, p1, p0, p0, p0}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->showMissedingVoiceMailDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "voicemailNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 145
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, -0x1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(), which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->log(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "slot":I
    iget-object v2, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-static {v2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    const-string v2, "onClick(), the sim is not inserted, cancel dialog and return"

    invoke-static {v2}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->log(Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-ne v5, p2, :cond_2

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intentCallSetting":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.settings.VoicemailSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const-string v2, "simId"

    iget-object v3, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    .end local v0    # "intentCallSetting":Landroid/content/Intent;
    :cond_2
    const/4 v2, -0x2

    if-ne v2, p2, :cond_0

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 139
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;->log(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected abstract showMissedingVoiceMailDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
