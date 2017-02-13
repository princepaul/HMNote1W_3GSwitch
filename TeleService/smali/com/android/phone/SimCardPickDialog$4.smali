.class Lcom/android/phone/SimCardPickDialog$4;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimCardPickDialog;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SimCardPickDialog;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/SimCardPickDialog$4;->this$0:Lcom/android/phone/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog$4;->this$0:Lcom/android/phone/SimCardPickDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/SimCardPickDialog;->onPickSimCard(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SimCardPickDialog;->access$200(Lcom/android/phone/SimCardPickDialog;I)V

    .line 120
    return-void
.end method
