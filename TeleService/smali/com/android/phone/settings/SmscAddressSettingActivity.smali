.class public Lcom/android/phone/settings/SmscAddressSettingActivity;
.super Lmiui/app/Activity;
.source "SmscAddressSettingActivity.java"


# static fields
.field private static final ADDRESS_TYPE_INTERNATIONAL:Ljava/lang/String; = "145"

.field private static final ADDRESS_TYPE_NON_INTERNAIONAL:Ljava/lang/String; = "129"

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x3e9

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x3ea

.field private static final EVENT_WAIT_QUERY_TIMEOUT:I = 0x3eb

.field private static final EVENT_WAIT_UPDATE_TIMEOUT:I = 0x3ec


# instance fields
.field private final WAIT_TIMEOUT:I

.field private isShowing:Z

.field private mEditTextSmscAddress:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mNeedAddressType:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSmscAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->WAIT_TIMEOUT:I

    .line 46
    iput-boolean v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 57
    new-instance v0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/SmscAddressSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/SmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/SmscAddressSettingActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSmscChars(Ljava/lang/String;I)[C
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "byteIndex"    # I

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 206
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 207
    .local v0, "chars":[C
    const/4 v1, 0x0

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 208
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 212
    .end local v0    # "chars":[C
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmscInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "byteIndex"    # I

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 198
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private smscToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 161
    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 162
    .local v4, "indexOfComma":I
    if-lez v4, :cond_0

    .line 163
    iput-boolean v10, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 164
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_0
    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "byteCount":I
    if-lt v0, v10, :cond_4

    .line 173
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v7

    .line 174
    .local v7, "ton_npi":I
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_4

    .line 175
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 177
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getSmscChars(Ljava/lang/String;I)[C

    move-result-object v2

    .line 178
    .local v2, "chars":[C
    if-eqz v2, :cond_2

    .line 179
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 180
    aget-char v1, v2, v5

    .line 181
    .local v1, "c":C
    const/16 v8, 0x66

    if-eq v1, v8, :cond_1

    const/16 v8, 0x46

    if-eq v1, v8, :cond_1

    .line 182
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "c":C
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "chars":[C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 193
    .end local v0    # "byteCount":I
    .end local v3    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "ton_npi":I
    :cond_4
    :goto_2
    return-object p1

    .line 190
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 221
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 223
    .local v4, "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "effective":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    .local v2, "effectiveLength":I
    div-int/lit8 v0, v2, 0x2

    .line 229
    .local v0, "byteLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 230
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_0
    and-int/lit8 v7, v2, 0x1

    if-ne v7, v10, :cond_1

    .line 234
    const/16 v7, 0x66

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    const-string v7, "91"

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 239
    .local v6, "totalLength":I
    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    .line 240
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 245
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    .end local v0    # "byteLength":I
    .end local v1    # "effective":Ljava/lang/String;
    .end local v2    # "effectiveLength":I
    .end local v3    # "i":I
    .end local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalLength":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mNeedAddressType:Z

    if-eqz v7, :cond_5

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    .line 252
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "145"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_5
    :goto_2
    return-object p1

    .line 242
    .restart local v0    # "byteLength":I
    .restart local v1    # "effective":Ljava/lang/String;
    .restart local v2    # "effectiveLength":I
    .restart local v3    # "i":I
    .restart local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "totalLength":I
    :cond_6
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v5, v9, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v0    # "byteLength":I
    .end local v1    # "effective":Ljava/lang/String;
    .end local v2    # "effectiveLength":I
    .end local v3    # "i":I
    .end local v4    # "number":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalLength":I
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "129"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 268
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    .line 269
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 270
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 271
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 273
    .local v1, "paddingDimen":I
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 274
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b04a1

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018f

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/SmscAddressSettingActivity$4;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$4;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/SmscAddressSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$3;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018c

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/SmscAddressSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$2;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 304
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 322
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 308
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z

    .line 315
    return-void
.end method
