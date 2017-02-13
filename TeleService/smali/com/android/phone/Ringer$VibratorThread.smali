.class Lcom/android/phone/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/Ringer;
    .param p2, "x1"    # Lcom/android/phone/Ringer$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-boolean v0, v0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iput-boolean v4, v0, Lcom/android/phone/Ringer;->mIsNowVibrating:Z

    .line 327
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1, v4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 332
    :goto_1
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/Ringer;->mIsNowVibrating:Z

    .line 334
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 336
    :cond_1
    return-void
.end method
