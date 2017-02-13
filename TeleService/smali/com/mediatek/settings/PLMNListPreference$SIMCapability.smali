.class Lcom/mediatek/settings/PLMNListPreference$SIMCapability;
.super Ljava/lang/Object;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCapability"
.end annotation


# instance fields
.field mFirstFormat:I

.field mFirstIndex:I

.field mLastFormat:I

.field mLastIndex:I

.field final synthetic this$0:Lcom/mediatek/settings/PLMNListPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/PLMNListPreference;IIII)V
    .locals 0
    .param p2, "startIndex"    # I
    .param p3, "stopIndex"    # I
    .param p4, "startFormat"    # I
    .param p5, "stopFormat"    # I

    .prologue
    .line 590
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput p2, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mFirstIndex:I

    .line 592
    iput p3, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastIndex:I

    .line 593
    iput p4, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mFirstFormat:I

    .line 594
    iput p5, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastFormat:I

    .line 595
    return-void
.end method


# virtual methods
.method public setCapability([I)V
    .locals 2
    .param p1, "r"    # [I

    .prologue
    .line 598
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mFirstIndex:I

    .line 602
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastIndex:I

    .line 603
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mFirstFormat:I

    .line 604
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastFormat:I

    goto :goto_0
.end method
