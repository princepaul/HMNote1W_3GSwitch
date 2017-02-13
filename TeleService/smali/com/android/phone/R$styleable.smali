.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I

.field public static final CallForwardEditPreference_reason:I = 0x1

.field public static final CallForwardEditPreference_serviceClass:I = 0x0

.field public static final EditPhoneNumberPreference:[I

.field public static final EditPhoneNumberPreference_changeNumButtonText:I = 0x2

.field public static final EditPhoneNumberPreference_confirmMode:I = 0x3

.field public static final EditPhoneNumberPreference_disableButtonText:I = 0x1

.field public static final EditPhoneNumberPreference_enableButtonText:I

.field public static final MultiSimListPreference:[I

.field public static final MultiSimListPreference_hasDoNotSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4301
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    .line 4356
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    .line 4436
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010006

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/R$styleable;->MultiSimListPreference:[I

    return-void

    .line 4301
    :array_0
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data

    .line 4356
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
