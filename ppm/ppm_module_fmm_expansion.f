      !-------------------------------------------------------------------------
      ! Module         :            ppm_module_fmm_expansion
      !-------------------------------------------------------------------------
      !
      ! Purpose       :  fast multipole method module, expansion routine
      !               
      !
      ! Remarks       : 
      !
      ! References    : 
      !
      ! Revisions     :
      !-------------------------------------------------------------------------
      !  $Log: ppm_module_fmm_expansion.f,v $
      !  Revision 1.1.1.1  2006/07/25 15:18:20  menahel
      !  initial import
      !
      !  Revision 1.2  2005/09/19 13:03:30  polasekb
      !  code cosmetics
      !
      !  Revision 1.1  2005/05/27 07:57:11  polasekb
      !  initial implementation
      !
      !  Revision 0  2004/11/25 16:38:33 polasekb
      !  Start
      !-------------------------------------------------------------------------
      !  Parallel Particle Mesh Library (PPM)
      !  Institute of Computational Science
      !  ETH Zentrum, Hirschengraben 84
      !  CH-8092 Zurich, Switzerland
      !-------------------------------------------------------------------------


#define __SINGLE_PRECISION 1
#define __DOUBLE_PRECISION 2
!#define __INTEGER          3
!#define __LOGICAL          4
!#define __2D               7
!#define __3D               8
!#define __SFIELD           9
!#define __VFIELD          10

MODULE ppm_module_fmm_expansion   

  !-----------------------------------------------------------------------------
  ! Define Interface
  !-----------------------------------------------------------------------------

  INTERFACE ppm_fmm_expansion
	MODULE PROCEDURE ppm_fmm_expansion_s
	MODULE PROCEDURE ppm_fmm_expansion_d  
  END INTERFACE

  !-----------------------------------------------------------------------------
  ! INCLUDE THE SOURCES
  !-----------------------------------------------------------------------------

CONTAINS

#define __KIND __SINGLE_PRECISION
#include "ppm_fmm_expansion.f"
#undef __KIND

#define __KIND __DOUBLE_PRECISION
#include "ppm_fmm_expansion.f"
#undef __KIND


END MODULE ppm_module_fmm_expansion

