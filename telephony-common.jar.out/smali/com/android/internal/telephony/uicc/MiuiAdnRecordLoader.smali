.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
.super Landroid/os/Handler;
.source "MiuiAdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x5

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ADN_SIZE_LOAD_DONE:I = 0x2

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x4

.field static final EVENT_EXT_SIZE_LOAD_DONE:I = 0x3

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x7

.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mRecordSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 69
    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 72
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 73
    const-string v0, "3F007F10"

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveRecordSize(ILandroid/os/AsyncResult;)[I
    .locals 4
    .param p1, "efid"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 335
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 329
    .local v0, "recordSize":[I
    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 330
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 331
    goto :goto_0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sendErrorResponse(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 344
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    if-nez v1, :cond_1

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 313
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 315
    :cond_1
    :goto_1
    return-void

    .line 162
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 163
    .local v8, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v14

    .line 165
    .local v14, "recordSize":[I
    if-eqz v14, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    if-eqz v1, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 176
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto :goto_0

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "recordSize":[I
    check-cast v14, [I

    .line 173
    .restart local v14    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x2

    aget v4, v14, v4

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    goto :goto_2

    .line 180
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "recordSize":[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 181
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v14

    .line 182
    .restart local v14    # "recordSize":[I
    if-eqz v14, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "recordSize":[I
    check-cast v14, [I

    .line 187
    .restart local v14    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x2

    aget v4, v14, v4

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 189
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 193
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "recordSize":[I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 194
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object v7, v1

    check-cast v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 196
    .local v7, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v14

    .line 197
    .restart local v14    # "recordSize":[I
    if-eqz v14, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    const/4 v2, 0x2

    aget v2, v14, v2

    if-le v1, v2, :cond_3

    .line 202
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v2, -0x3e9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 206
    :cond_3
    const/4 v1, 0x0

    aget v1, v14, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    move-result-object v9

    .line 207
    .local v9, "buildAdnResult":Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    iget v1, v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    if-eqz v1, :cond_4

    .line 208
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    iget v2, v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 212
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    iget-object v4, v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->adnStr:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 217
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "buildAdnResult":Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    .end local v14    # "recordSize":[I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 218
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 222
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 223
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 227
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 228
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v10, v1

    check-cast v10, [B

    .line 230
    .local v10, "data":[B
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 231
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 235
    :cond_6
    if-nez v10, :cond_7

    .line 236
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v2, -0x3e9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 240
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    invoke-direct {v7, v1, v2, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 241
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 243
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 256
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v10, v1

    check-cast v10, [B

    .line 257
    .restart local v10    # "data":[B
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object v7, v1

    check-cast v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 259
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 260
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 264
    :cond_8
    if-nez v10, :cond_9

    .line 265
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v2, -0x3e9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 269
    :cond_9
    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->appendExtRecord([B)V

    .line 270
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 276
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v8, v1

    check-cast v8, Landroid/os/AsyncResult;

    .line 277
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v11, v1

    check-cast v11, Ljava/util/ArrayList;

    .line 279
    .local v11, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 280
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 284
    :cond_a
    if-nez v11, :cond_b

    .line 285
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v2, -0x3e9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 289
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 291
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    aget v12, v1, v2

    .line 294
    .local v12, "extensionRecordSize":I
    :goto_3
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "s":I
    :goto_4
    if-ge v13, v15, :cond_0

    .line 295
    new-instance v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 296
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 302
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v12, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 294
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 293
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v12    # "extensionRecordSize":I
    .end local v13    # "i":I
    .end local v15    # "s":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_3

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 107
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 109
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 112
    .local v0, "recordSize":[I
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 84
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 85
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    .line 87
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 89
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 133
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 134
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 135
    iput p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    .line 136
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 137
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    move-result-object v6

    .line 143
    .local v6, "buildAdnResult":Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    iget v0, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    iget v1, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget-object v3, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->adnStr:[B

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p2

    move v2, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
