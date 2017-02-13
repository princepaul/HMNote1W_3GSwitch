.class Lcom/android/phone/CallRecorder$2;
.super Ljava/lang/Object;
.source "CallRecorder.java"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallRecorder;->startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRecorder;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/CallRecorder$2;->this$0:Lcom/android/phone/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 2
    .param p1, "mr"    # Lmiui/media/Mp3Recorder;
    .param p2, "err"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/CallRecorder$2;->this$0:Lcom/android/phone/CallRecorder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRecorder;->stopCallRecord(I)V

    .line 100
    return-void
.end method
