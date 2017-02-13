.class Lcom/android/phone/CallNotifier$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->initTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    .prologue
    .line 4131
    iput-object p1, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;Z)Z

    .line 4144
    iget-object v0, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 4145
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 4138
    invoke-virtual {p0, p1}, Lcom/android/phone/CallNotifier$3;->onDone(Ljava/lang/String;)V

    .line 4139
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 4134
    return-void
.end method
