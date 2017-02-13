.class Lcom/android/phone/CallRecorder$1;
.super Ljava/lang/Object;
.source "CallRecorder.java"

# interfaces
.implements Lcom/android/phone/StorageMonitor$Listener;


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
    .line 45
    iput-object p1, p0, Lcom/android/phone/CallRecorder$1;->this$0:Lcom/android/phone/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/CallRecorder$1;->this$0:Lcom/android/phone/CallRecorder;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallRecorder;->stopCallRecord(I)V

    .line 49
    return-void
.end method
