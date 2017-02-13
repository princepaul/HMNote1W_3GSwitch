.class public Lcom/android/phone/settings/CdmaCallForwardEditPreference;
.super Lcom/android/phone/settings/EditPhoneNumberPreference;
.source "CdmaCallForwardEditPreference.java"


# static fields
.field private static final PREFIX_ENABLE_CFB:Ljava/lang/String; = "tel:*90"

.field private static final PREFIX_ENABLE_CFNRC:Ljava/lang/String; = "tel:*68"

.field private static final PREFIX_ENABLE_CFNRY:Ljava/lang/String; = "tel:*92"

.field private static final PREFIX_ENABLE_CFU:Ljava/lang/String; = "tel:*72"

.field private static final URI_DISABLE_CFB:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRC:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRY:Landroid/net/Uri;

.field private static final URI_DISABLE_CFU:Landroid/net/Uri;


# instance fields
.field mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "tel:*720"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    .line 19
    const-string v0, "tel:*900"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    .line 21
    const-string v0, "tel:*920"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    .line 23
    const-string v0, "tel:*680"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0e000b

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 40
    new-instance v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;-><init>(Lcom/android/phone/settings/CdmaCallForwardEditPreference;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 90
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    return-object v0
.end method
