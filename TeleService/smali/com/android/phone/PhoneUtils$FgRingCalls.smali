.class Lcom/android/phone/PhoneUtils$FgRingCalls;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FgRingCalls"
.end annotation


# instance fields
.field private fgCall:Lcom/android/internal/telephony/Call;

.field private ringing:Lcom/android/internal/telephony/Call;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .param p1, "fg"    # Lcom/android/internal/telephony/Call;
    .param p2, "ring"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;

    .line 183
    iput-object p2, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneUtils$FgRingCalls;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneUtils$FgRingCalls;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;

    return-object v0
.end method
