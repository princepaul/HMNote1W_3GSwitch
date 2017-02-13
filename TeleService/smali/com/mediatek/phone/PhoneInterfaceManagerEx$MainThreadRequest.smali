.class final Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 313
    return-void
.end method
