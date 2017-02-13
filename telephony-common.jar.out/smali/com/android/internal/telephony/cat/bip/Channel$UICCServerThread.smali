.class public Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final RETRY_COUNT:I = 0x4


# instance fields
.field di:Ljava/io/DataInputStream;

.field mReTryCount:I

.field mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/Channel;Lcom/android/internal/telephony/cat/bip/TcpServerChannel;)V
    .locals 2
    .param p2, "tcpServerChannel"    # Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    .line 465
    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 475
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method
