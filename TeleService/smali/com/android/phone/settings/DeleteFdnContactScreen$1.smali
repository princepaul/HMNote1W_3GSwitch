.class Lcom/android/phone/settings/DeleteFdnContactScreen$1;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/DeleteFdnContactScreen;->handleResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/DeleteFdnContactScreen;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen$1;->this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen$1;->this$0:Lcom/android/phone/settings/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->finish()V

    .line 164
    return-void
.end method
