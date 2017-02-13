.class public Lcom/mediatek/phone/SuppMessageManager;
.super Ljava/lang/Object;
.source "SuppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/SuppMessageManager$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SuppMessageManager"

.field private static final SUP_TYPE:I = 0x91


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mDualTalk:Lcom/mediatek/phone/DualTalkUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 44
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private getSuppServiceMOStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .locals 3
    .param p1, "notification"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    .line 191
    const-string v0, ""

    .line 192
    .local v0, "retStr":Ljava/lang/String;
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 226
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    goto :goto_0

    .line 207
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    goto :goto_0

    .line 211
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    goto :goto_0

    .line 214
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    goto :goto_0

    .line 217
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    goto/16 :goto_0

    .line 221
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSuppServiceMTStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .locals 4
    .param p1, "notification"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    const v3, 0x7f0b00dc

    .line 235
    const-string v0, ""

    .line 236
    .local v0, "retStr":Ljava/lang/String;
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 305
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    goto :goto_0

    .line 254
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_0

    .line 257
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_0

    .line 260
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    goto/16 :goto_0

    .line 263
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    goto/16 :goto_0

    .line 266
    :pswitch_9
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    goto/16 :goto_0

    .line 269
    :pswitch_a
    iget-object v1, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    goto/16 :goto_0

    .line 273
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    goto/16 :goto_0

    .line 277
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    goto/16 :goto_0

    .line 282
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    goto/16 :goto_0

    .line 287
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    goto/16 :goto_0

    .line 292
    :pswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    goto/16 :goto_0

    .line 297
    :pswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string v0, "SuppMessageManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method private showSSNotificationToast(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "msg":Ljava/lang/String;
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/mediatek/phone/SuppMessageManager;->getSuppServiceMOStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(Ljava/lang/CharSequence;)V

    .line 187
    return-void

    .line 172
    :cond_1
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 174
    const-string v1, ""

    .line 175
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/phone/SuppMessageManager;->getSuppServiceMTStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    const/16 v3, 0x91

    if-ne v2, v3, :cond_2

    .line 178
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method doSuppCrssSuppServiceNotification(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .line 387
    .local v2, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    iget-object v5, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 392
    :goto_0
    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 394
    .local v4, "phoneType":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 395
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 403
    .end local v4    # "phoneType":I
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 406
    const-string v5, " Connnection is null"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 432
    :goto_2
    return-void

    .line 390
    :cond_1
    iget-object v5, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto :goto_0

    .line 396
    .restart local v4    # "phoneType":I
    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 397
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_1

    .line 399
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 410
    .end local v4    # "phoneType":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 411
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_6

    move-object v0, v3

    .line 412
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 415
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SuppCrssSuppService ci.phoneNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 417
    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_5

    .line 419
    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lcom/android/phone/CallModeler;->onCrssSuppServiceNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 430
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_2

    .line 422
    :cond_6
    instance-of v5, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_5

    move-object v5, v3

    .line 423
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 424
    .restart local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_5

    .line 426
    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 427
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lcom/android/phone/CallModeler;->onCrssSuppServiceNumberUpdate(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3
.end method

.method doSuppCrssSuppServiceNotificationforInComing()V
    .locals 5

    .prologue
    .line 438
    const-string v4, "doSuppCrssSuppServiceNotificationforInComing..."

    invoke-direct {p0, v4}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 443
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    .line 444
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 447
    :cond_0
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 449
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 450
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 451
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v4, :cond_2

    .line 452
    const-string v4, "should not update Screen and Notification."

    invoke-direct {p0, v4}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 460
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 456
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/CallModeler;->updateCalls()V

    goto :goto_0
.end method

.method handleSwitchFailed()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 313
    iget-object v9, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_0

    .line 316
    const-string v9, "send message to update screen after 500ms"

    invoke-direct {p0, v9}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 318
    iget-object v9, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0b02e5

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 357
    :goto_0
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v9, :cond_3

    .line 323
    iget-object v9, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v9}, Lcom/mediatek/phone/DualTalkUtils;->getAllActiveCalls()Ljava/util/List;

    move-result-object v0

    .line 342
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 343
    :cond_2
    const-string v9, "This is only one ACTIVE call, so do nothing."

    invoke-direct {p0, v9}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .restart local v0    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v9, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v6

    .line 327
    .local v6, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    .line 329
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active phone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " phone state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 331
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_4

    .line 332
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 334
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active call = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 336
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    .end local v1    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :cond_5
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    invoke-static {v9}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 346
    .local v2, "firstDuration":J
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    invoke-static {v9}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v7

    .line 347
    .local v7, "secondDuration":J
    const-string v9, "More than one ACTIVE calls, hangup the latest."

    invoke-direct {p0, v9}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 349
    cmp-long v9, v2, v7

    if-lez v9, :cond_6

    .line 350
    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 352
    :cond_6
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 360
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    .line 362
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuppCrssNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 364
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 381
    :goto_0
    :pswitch_0
    return-void

    .line 368
    :pswitch_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/SuppMessageManager;->doSuppCrssSuppServiceNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/phone/SuppMessageManager;->doSuppCrssSuppServiceNotificationforInComing()V

    goto :goto_0

    .line 375
    :pswitch_3
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->type:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/SuppMessageManager;->doSuppCrssSuppServiceNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSuppServiceFailed(Landroid/os/AsyncResult;)Ljava/lang/String;
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 52
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 54
    .local v1, "service":Lcom/android/internal/telephony/Phone$SuppService;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 56
    const-string v0, ""

    .line 57
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/phone/SuppMessageManager$1;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 123
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 127
    :goto_1
    return-object v2

    .line 63
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPhoneSwapStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setPhoneSwapStatus(Z)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "onSuppServiceFailed: can\'t hold, so hangup!"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 74
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0086

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 76
    const-string v2, ""

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/SuppMessageManager;->handleSwitchFailed()V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    goto/16 :goto_0

    .line 115
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/phone/SuppMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 131
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 133
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/SuppMessageManager;->log(Ljava/lang/String;)V

    .line 136
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 165
    :sswitch_0
    return-void

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method
