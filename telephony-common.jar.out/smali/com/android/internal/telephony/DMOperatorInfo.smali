.class public final Lcom/android/internal/telephony/DMOperatorInfo;
.super Ljava/lang/Object;
.source "DMOperatorInfo.java"


# instance fields
.field public mDMnum:Ljava/lang/String;

.field public mDMport:I

.field public mOpname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "Opname"    # Ljava/lang/String;
    .param p2, "DMnum"    # Ljava/lang/String;
    .param p3, "DMport"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mOpname:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMnum:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMport:I

    .line 58
    return-void
.end method
