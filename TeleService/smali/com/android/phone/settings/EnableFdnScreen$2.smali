.class Lcom/android/phone/settings/EnableFdnScreen$2;
.super Ljava/lang/Object;
.source "EnableFdnScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EnableFdnScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EnableFdnScreen;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/phone/settings/EnableFdnScreen$2;->this$0:Lcom/android/phone/settings/EnableFdnScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/phone/settings/EnableFdnScreen$2;->this$0:Lcom/android/phone/settings/EnableFdnScreen;

    invoke-virtual {v0}, Lcom/android/phone/settings/EnableFdnScreen;->finish()V

    .line 131
    return-void
.end method
