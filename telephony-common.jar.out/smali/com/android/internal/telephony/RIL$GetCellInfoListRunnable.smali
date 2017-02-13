.class Lcom/android/internal/telephony/RIL$GetCellInfoListRunnable;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCellInfoListRunnable"
.end annotation


# instance fields
.field mrr:Lcom/android/internal/telephony/RILRequest;

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p2, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 6238
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$GetCellInfoListRunnable;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6239
    iput-object p2, p0, Lcom/android/internal/telephony/RIL$GetCellInfoListRunnable;->mrr:Lcom/android/internal/telephony/RILRequest;

    .line 6240
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6243
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$GetCellInfoListRunnable;->mrr:Lcom/android/internal/telephony/RILRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$GetCellInfoListRunnable;->mrr:Lcom/android/internal/telephony/RILRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 6251
    :cond_0
    return-void
.end method
