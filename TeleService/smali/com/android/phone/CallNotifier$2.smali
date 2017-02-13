.class Lcom/android/phone/CallNotifier$2;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    .line 4103
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 4106
    if-nez p1, :cond_3

    .line 4108
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 4109
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 4112
    :cond_0
    const-string v1, "CallNotifier"

    const-string v2, "Language is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4114
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 4115
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # setter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1, v3}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    .line 4129
    .end local v0    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 4119
    .restart local v0    # "result":I
    :cond_2
    const-string v1, "CallNotifier"

    const-string v2, "init success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4123
    .end local v0    # "result":I
    :cond_3
    const-string v1, "CallNotifier"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4125
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 4126
    iget-object v1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # setter for: Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1, v3}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method
