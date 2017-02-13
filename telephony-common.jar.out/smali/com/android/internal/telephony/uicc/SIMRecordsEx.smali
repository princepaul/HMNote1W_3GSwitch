.class public Lcom/android/internal/telephony/uicc/SIMRecordsEx;
.super Landroid/os/Handler;
.source "SIMRecordsEx.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static final CRASH_RIL:Z = false

.field protected static final DBG:Z = true

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"


# instance fields
.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field public mIccId:Ljava/lang/String;

.field protected mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->iccIdQueryState:I

    .line 147
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    .line 153
    const-string v1, "SIMRecordsEx construct"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->hasQueryIccId:Z

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 267
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 268
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 269
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 270
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mContext:Landroid/content/Context;

    .line 271
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    .line 272
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 179
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const-string v2, "handleMessage (EVENT_RADIO_STATE_CHANGED)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->hasQueryIccId:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 214
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->iccIdQueryState:I

    .line 215
    .local v1, "oldIccIdQueryState":I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->iccIdQueryState:I

    .line 217
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 223
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->iccIdQueryState:I

    .line 224
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    .line 225
    const-string v2, "query mIccId error"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 215
    goto :goto_1

    .line 233
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 234
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    .line 238
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->hasQueryIccId:Z

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 295
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    return-void
.end method

.method public resetSimRecordsEx()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "resetSimRecordsEx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->mIccId:Ljava/lang/String;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->iccIdQueryState:I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecordsEx;->hasQueryIccId:Z

    .line 284
    return-void
.end method
