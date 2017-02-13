.class public abstract Lcom/mediatek/calloption/CallOptionBaseHandler;
.super Ljava/lang/Object;
.source "CallOptionBaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallOptionBaseHandler"


# instance fields
.field protected mDialog:Landroid/app/Dialog;

.field protected mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "CallOptionBaseHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 67
    :cond_0
    return-void
.end method

.method public abstract handleRequest(Lcom/mediatek/calloption/Request;)V
.end method

.method protected newDialogBuilderWithTheme(Landroid/content/Context;)Lmiui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V
    .locals 0
    .param p1, "successor"    # Lcom/mediatek/calloption/CallOptionBaseHandler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 74
    return-void
.end method
